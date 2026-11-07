.class public interface abstract Landroid/provider/MediaStore$Audio$PlaylistsColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistsColumns"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DATA:Ljava/lang/String; = "_data"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DATE_ADDED:Ljava/lang/String; = "date_added"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist DATE_MODIFIED:Ljava/lang/String; = "date_modified"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist NAME:Ljava/lang/String; = "name"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field
