.class public final Landroid/service/displayhash/DisplayHashParams$Builder;
.super Ljava/lang/Object;
.source "DisplayHashParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/displayhash/DisplayHashParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBufferSize:Landroid/util/Size;

.field private blacklist mGrayscaleBuffer:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/displayhash/DisplayHashParams;
    .registers 4

    .line 88
    new-instance v0, Landroid/service/displayhash/DisplayHashParams;

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mBufferSize:Landroid/util/Size;

    iget-boolean v2, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mGrayscaleBuffer:Z

    invoke-direct {v0, v1, v2}, Landroid/service/displayhash/DisplayHashParams;-><init>(Landroid/util/Size;Z)V

    return-object v0
.end method

.method public whitelist setBufferSize(II)Landroid/service/displayhash/DisplayHashParams$Builder;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 72
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mBufferSize:Landroid/util/Size;

    .line 73
    return-object p0
.end method

.method public whitelist setGrayscaleBuffer(Z)Landroid/service/displayhash/DisplayHashParams$Builder;
    .registers 2
    .param p1, "grayscaleBuffer"    # Z

    .line 81
    iput-boolean p1, p0, Landroid/service/displayhash/DisplayHashParams$Builder;->mGrayscaleBuffer:Z

    .line 82
    return-object p0
.end method
