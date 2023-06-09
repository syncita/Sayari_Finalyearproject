<x-frontend-layout>
    <section>
        <div class="container">
            <div class="row">
                @foreach ($posts as $index => $item)
                    @if ($item->status == 'approved')
                    <div class="col-md-3 py-3">
                        <div class="card">
                            <div class="card-body">
                              <a href="{{ route('post', $item->id) }}"> <img src="{{ asset($item->image) }}"
                                width="220" height="300" alt=""></a>
                                <h6 style="font-size: 14px;" class="my-2">{{ Str::words($item->title,3,'...') }}</h6>
                                <div style="font-size: 12px">Writer:{{ $item->user->name }}</div>
                                @if ($item->price == null)
                                  <span class="badge bg-success">Free</span>
                                @else
                                  Rs.{{ $item->price }}
                                @endif
                            </div>
                        </div>
                    </div>
                    @endif
                @endforeach
            </div>
        </div>
    </section>
</x-frontend-layout>
