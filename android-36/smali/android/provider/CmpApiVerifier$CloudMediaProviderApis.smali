.class interface abstract annotation Landroid/provider/CmpApiVerifier$CloudMediaProviderApis;
.super Ljava/lang/Object;
.source "CmpApiVerifier.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CmpApiVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "CloudMediaProviderApis"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist OnGetCapabilities:Ljava/lang/String; = "OnGetCapabilities"

.field public static final blacklist OnGetMediaCollectionInfo:Ljava/lang/String; = "onGetMediaCollectionInfo"

.field public static final blacklist OnOpenMedia:Ljava/lang/String; = "onOpenMedia"

.field public static final blacklist OnOpenPreview:Ljava/lang/String; = "onOpenPreview"

.field public static final blacklist OnQueryAlbums:Ljava/lang/String; = "onQueryAlbums"

.field public static final blacklist OnQueryDeletedMedia:Ljava/lang/String; = "onQueryDeletedMedia"

.field public static final blacklist OnQueryMedia:Ljava/lang/String; = "onQueryMedia"

.field public static final blacklist OnQueryMediaCategories:Ljava/lang/String; = "onQueryMediaCategories"

.field public static final blacklist OnQueryMediaInMediaSet:Ljava/lang/String; = "onQueryMediaInMediaSet"

.field public static final blacklist OnQueryMediaSets:Ljava/lang/String; = "onQueryMediaSets"

.field public static final blacklist OnQuerySearchSuggestions:Ljava/lang/String; = "onQuerySearchSuggestions"

.field public static final blacklist OnSearchMedia:Ljava/lang/String; = "onSearchMedia"
