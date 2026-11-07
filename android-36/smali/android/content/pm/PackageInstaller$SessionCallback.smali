.class public abstract Landroid/content/pm/PackageInstaller$SessionCallback;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onActiveChanged(IZ)V
.end method

.method public abstract whitelist onBadgingChanged(I)V
.end method

.method public abstract whitelist onCreated(I)V
.end method

.method public abstract whitelist onFinished(IZ)V
.end method

.method public abstract whitelist onProgressChanged(IF)V
.end method
