.class public abstract Landroid/media/MediaSync$Callback;
.super Ljava/lang/Object;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onAudioBufferConsumed(Landroid/media/MediaSync;Ljava/nio/ByteBuffer;I)V
.end method
