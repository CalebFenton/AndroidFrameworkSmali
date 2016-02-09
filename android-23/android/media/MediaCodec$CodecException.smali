.class public final Landroid/media/MediaCodec$CodecException;
.super Ljava/lang/IllegalStateException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecException"
.end annotation


# static fields
.field private static final ACTION_RECOVERABLE:I = 0x2

.field private static final ACTION_TRANSIENT:I = 0x1

.field public static final ERROR_INSUFFICIENT_RESOURCE:I = 0x44c

.field public static final ERROR_RECLAIMED:I = 0x44d


# instance fields
.field private final mActionCode:I

.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "actionCode"    # I
    .param p3, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1958
    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 1959
    iput p1, p0, Landroid/media/MediaCodec$CodecException;->mErrorCode:I

    #@5
    .line 1960
    iput p2, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    #@7
    .line 1963
    if-gez p1, :cond_0

    #@9
    const-string/jumbo v0, "neg_"

    #@c
    .line 1965
    .local v0, "sign":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "android.media.MediaCodec.error_"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@1f
    move-result v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1964
    iput-object v1, p0, Landroid/media/MediaCodec$CodecException;->mDiagnosticInfo:Ljava/lang/String;

    #@2a
    .line 1957
    return-void

    #@2b
    .line 1963
    .end local v0    # "sign":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@2e
    .restart local v0    # "sign":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2000
    iget-object v0, p0, Landroid/media/MediaCodec$CodecException;->mDiagnosticInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    #@0
    .prologue
    .line 1990
    iget v0, p0, Landroid/media/MediaCodec$CodecException;->mErrorCode:I

    #@2
    return v0
.end method

.method public isRecoverable()Z
    .locals 2

    #@0
    .prologue
    .line 1983
    iget v0, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isTransient()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1974
    iget v1, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
