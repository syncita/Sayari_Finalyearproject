<x-admin-layout>
    <section>
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <h3>Document Type</h5>

               <a href="{{ route('type.create') }}" class="btn btn-primary btn-sm">Add New</a>


            </div>
            <div class="card-body">
                <table class="table">
                    <tr>
                        <th class="border border-1">SN</th>
                        <th class="border border-1 w-75">Name</th>
                        <th class="border border-1">Action</th>
                    </tr>

                    @foreach ($type as $item)
                    <tr>
                        <td class="border border-1">{{ $item->id }}</td>
                        <td class="border border-1">{{ $item->name }}</td>
                        <td class="border border-1">
                            <form action="{{ route('type.destroy',$item->id) }}" method="post">
                            @csrf
                                @method('delete')
                                <a href="{{ route('type.edit',$item->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                        </td>
                    </tr>
                    @endforeach

                </table>
            </div>
        </div>
    </section>
</x-admin-layout>
