@extends('ws-app')
@section('content')
    @if( count($company) !== 0 AND $categories_data['company']->active == 1)
        <div id="about" class="mob-block-content mob-block_about">
            <h2 class="mob-block_header mob-block_header-about">About us</h2>
            <div class="mob-about_desc">
                <p>����, ���� ��������� ����� � �����. ����, ���� ��������� �����������.</p>
                <p>�� ��� ���� project - ������ ������ ��������, � ����� ��������</p>
                <p>�����������, ���������, ����������.</p>
                <p>�������������, ���������, ��������� ������ ������ �����'���.</p>
                <p>�� ������� �����������, ��� ����쳺 ���� ������� � ����� �� � �����.</p>
            </div>
        </div>
    @endif
@endsection