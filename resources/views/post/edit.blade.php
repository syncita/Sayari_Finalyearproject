<x-app-layout>
    <section>
        <div class="container">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <h3>Edit Article: {{$article->title}}</h3>
                    <a href="{{ route('article.index') }}" class="btn btn-primary btn-sm">Back</a>
                </div>

                <div class="card-body">
                    <form action="{{ route('article.update', $article->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="title">Title<span class="text-danger">*</span></label>
                                    <input id="title" class="form-control" type="text" name="title" value="{{ $article->title }}" maxlength="255">
                                    @error('title')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                    
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea id="description" class="form-control summernote" name="description" rows="3">{{ $article->description }}</textarea>
                                    @error('description')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                    
                    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="category_id">Category <span class="text-danger">*</span></label>
                                    <select id="category_id" class="form-control" name="category_id" required>
                                        @foreach ($category as $item)
                                            <option value="{{ $item->id }}" {{ $item->id == $article->category_id ? 'selected' : '' }}>
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('category_id')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tags">Tags</label>
                                    <input id="tags" class="form-control" type="text" name="tags" value="{{ $article->tags }}">
                                    @error('tags')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="payment_category_id">Payment Category <span class="text-danger">*</span></label>
                                    <select id="payment_category_id" class="form-control" name="payment_category_id" required>
                                        @foreach ($payment as $item)
                                            <option value="{{ $item->id }}" {{ $item->id == $article->payment_category_id ? 'selected' : '' }}>
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('payment_category_id')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="price">Price (Optional)</label>
                                    <input id="price" class="form-control" type="number" name="price"
                                        value="{{ $article->price }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="type_id">Type<span class="text-danger">*</span></label>
                                    <select id="type_id" class="form-control" name="type_id">
                                        @foreach ($type as $item)
                                            <option value="{{ $item->id }}"
                                                {{ $item->id == $article->type_id ? 'selected' : '' }}>
                                                {{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('type_id')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="max_age">Max Age<span class="text-danger">*</span></label>
                                    <input id="max_age" class="form-control" type="text" name="max_age"
                                        value="{{ $article->max_age }}">
                                </div>
                                @error('max_age')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="image">Upload image <span class="text-danger">*</span></label>
                                    <input id="image" class="form-control-file" type="file" name="image">
                                </div>
                                @error('image')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                            </div>

                            <div> <button type="submit" class="btn btn-primary">Save Record</button></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</x-app-layout>
