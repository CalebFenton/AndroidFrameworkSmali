.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$LoadState;
.super Ljava/lang/Object;
.source "LibraryLoader.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "LoadState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist LOADED:I = 0x2

.field public static final blacklist MAIN_DEX_LOADED:I = 0x1

.field public static final blacklist NOT_LOADED:I
