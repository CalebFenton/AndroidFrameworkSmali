.class public abstract Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;
.super Ljava/lang/Object;
.source "CronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LibraryLoader"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist loadLibrary(Ljava/lang/String;)V
.end method
