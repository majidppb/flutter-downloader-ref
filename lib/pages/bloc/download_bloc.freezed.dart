// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$GetDownloadsImpl implements _GetDownloads {
  const _$GetDownloadsImpl();

  @override
  String toString() {
    return 'DownloadEvent.getDownloads()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) {
    return getDownloads();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) {
    return getDownloads?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (getDownloads != null) {
      return getDownloads();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) {
    return getDownloads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) {
    return getDownloads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (getDownloads != null) {
      return getDownloads(this);
    }
    return orElse();
  }
}

abstract class _GetDownloads implements DownloadEvent {
  const factory _GetDownloads() = _$GetDownloadsImpl;
}

/// @nodoc

class _$AddDownloadImpl implements _AddDownload {
  const _$AddDownloadImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'DownloadEvent.addDownload(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDownloadImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) {
    return addDownload(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) {
    return addDownload?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (addDownload != null) {
      return addDownload(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) {
    return addDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) {
    return addDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (addDownload != null) {
      return addDownload(this);
    }
    return orElse();
  }
}

abstract class _AddDownload implements DownloadEvent {
  const factory _AddDownload(final String link) = _$AddDownloadImpl;

  String get link;
}

/// @nodoc

class _$RemoveDownloadImpl implements _RemoveDownload {
  const _$RemoveDownloadImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DownloadEvent.removeDownload(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDownloadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) {
    return removeDownload(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) {
    return removeDownload?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (removeDownload != null) {
      return removeDownload(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) {
    return removeDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) {
    return removeDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (removeDownload != null) {
      return removeDownload(this);
    }
    return orElse();
  }
}

abstract class _RemoveDownload implements DownloadEvent {
  const factory _RemoveDownload(final String id) = _$RemoveDownloadImpl;

  String get id;
}

/// @nodoc

class _$UpdateProgressImpl implements _UpdateProgress {
  const _$UpdateProgressImpl(this.id, this.status, this.progress);

  @override
  final String id;
  @override
  final int status;
  @override
  final int progress;

  @override
  String toString() {
    return 'DownloadEvent.updateProgress(id: $id, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status, progress);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) {
    return updateProgress(id, status, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) {
    return updateProgress?.call(id, status, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (updateProgress != null) {
      return updateProgress(id, status, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) {
    return updateProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) {
    return updateProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (updateProgress != null) {
      return updateProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateProgress implements DownloadEvent {
  const factory _UpdateProgress(
          final String id, final int status, final int progress) =
      _$UpdateProgressImpl;

  String get id;
  int get status;
  int get progress;
}

/// @nodoc

class _$RefreshTaskIdImpl implements _RefreshTaskId {
  const _$RefreshTaskIdImpl(this.oldId, this.newId);

  @override
  final String oldId;
  @override
  final String newId;

  @override
  String toString() {
    return 'DownloadEvent.refreshTaskId(oldId: $oldId, newId: $newId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTaskIdImpl &&
            (identical(other.oldId, oldId) || other.oldId == oldId) &&
            (identical(other.newId, newId) || other.newId == newId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldId, newId);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) {
    return refreshTaskId(oldId, newId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) {
    return refreshTaskId?.call(oldId, newId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (refreshTaskId != null) {
      return refreshTaskId(oldId, newId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) {
    return refreshTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) {
    return refreshTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (refreshTaskId != null) {
      return refreshTaskId(this);
    }
    return orElse();
  }
}

abstract class _RefreshTaskId implements DownloadEvent {
  const factory _RefreshTaskId(final String oldId, final String newId) =
      _$RefreshTaskIdImpl;

  String get oldId;
  String get newId;
}

/// @nodoc

class _$DownloadCompletedImpl implements _DownloadCompleted {
  const _$DownloadCompletedImpl(this.id, this.progress);

  @override
  final String id;
  @override
  final DownloadProgress progress;

  @override
  String toString() {
    return 'DownloadEvent.downloadCompleted(id: $id, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadCompletedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, progress);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloads,
    required TResult Function(String link) addDownload,
    required TResult Function(String id) removeDownload,
    required TResult Function(String id, int status, int progress)
        updateProgress,
    required TResult Function(String oldId, String newId) refreshTaskId,
    required TResult Function(String id, DownloadProgress progress)
        downloadCompleted,
  }) {
    return downloadCompleted(id, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloads,
    TResult? Function(String link)? addDownload,
    TResult? Function(String id)? removeDownload,
    TResult? Function(String id, int status, int progress)? updateProgress,
    TResult? Function(String oldId, String newId)? refreshTaskId,
    TResult? Function(String id, DownloadProgress progress)? downloadCompleted,
  }) {
    return downloadCompleted?.call(id, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloads,
    TResult Function(String link)? addDownload,
    TResult Function(String id)? removeDownload,
    TResult Function(String id, int status, int progress)? updateProgress,
    TResult Function(String oldId, String newId)? refreshTaskId,
    TResult Function(String id, DownloadProgress progress)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (downloadCompleted != null) {
      return downloadCompleted(id, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_AddDownload value) addDownload,
    required TResult Function(_RemoveDownload value) removeDownload,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_RefreshTaskId value) refreshTaskId,
    required TResult Function(_DownloadCompleted value) downloadCompleted,
  }) {
    return downloadCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_AddDownload value)? addDownload,
    TResult? Function(_RemoveDownload value)? removeDownload,
    TResult? Function(_UpdateProgress value)? updateProgress,
    TResult? Function(_RefreshTaskId value)? refreshTaskId,
    TResult? Function(_DownloadCompleted value)? downloadCompleted,
  }) {
    return downloadCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_AddDownload value)? addDownload,
    TResult Function(_RemoveDownload value)? removeDownload,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_RefreshTaskId value)? refreshTaskId,
    TResult Function(_DownloadCompleted value)? downloadCompleted,
    required TResult orElse(),
  }) {
    if (downloadCompleted != null) {
      return downloadCompleted(this);
    }
    return orElse();
  }
}

abstract class _DownloadCompleted implements DownloadEvent {
  const factory _DownloadCompleted(
          final String id, final DownloadProgress progress) =
      _$DownloadCompletedImpl;

  String get id;
  DownloadProgress get progress;
}

/// @nodoc
mixin _$DownloadState {
//key : download task id
  Map<String, DownloadProgress> get downloads =>
      throw _privateConstructorUsedError;
  Map<String, DownloadProgress> get completed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call(
      {Map<String, DownloadProgress> downloads,
      Map<String, DownloadProgress> completed});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloads = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as Map<String, DownloadProgress>,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Map<String, DownloadProgress>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadStateImplCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$DownloadStateImplCopyWith(
          _$DownloadStateImpl value, $Res Function(_$DownloadStateImpl) then) =
      __$$DownloadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, DownloadProgress> downloads,
      Map<String, DownloadProgress> completed});
}

/// @nodoc
class __$$DownloadStateImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadStateImpl>
    implements _$$DownloadStateImplCopyWith<$Res> {
  __$$DownloadStateImplCopyWithImpl(
      _$DownloadStateImpl _value, $Res Function(_$DownloadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloads = null,
    Object? completed = null,
  }) {
    return _then(_$DownloadStateImpl(
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as Map<String, DownloadProgress>,
      completed: null == completed
          ? _value._completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Map<String, DownloadProgress>,
    ));
  }
}

/// @nodoc

class _$DownloadStateImpl implements _DownloadState {
  const _$DownloadStateImpl(
      {required final Map<String, DownloadProgress> downloads,
      required final Map<String, DownloadProgress> completed})
      : _downloads = downloads,
        _completed = completed;

//key : download task id
  final Map<String, DownloadProgress> _downloads;
//key : download task id
  @override
  Map<String, DownloadProgress> get downloads {
    if (_downloads is EqualUnmodifiableMapView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_downloads);
  }

  final Map<String, DownloadProgress> _completed;
  @override
  Map<String, DownloadProgress> get completed {
    if (_completed is EqualUnmodifiableMapView) return _completed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_completed);
  }

  @override
  String toString() {
    return 'DownloadState(downloads: $downloads, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStateImpl &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            const DeepCollectionEquality()
                .equals(other._completed, _completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_downloads),
      const DeepCollectionEquality().hash(_completed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      __$$DownloadStateImplCopyWithImpl<_$DownloadStateImpl>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
          {required final Map<String, DownloadProgress> downloads,
          required final Map<String, DownloadProgress> completed}) =
      _$DownloadStateImpl;

  @override //key : download task id
  Map<String, DownloadProgress> get downloads;
  @override
  Map<String, DownloadProgress> get completed;
  @override
  @JsonKey(ignore: true)
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
