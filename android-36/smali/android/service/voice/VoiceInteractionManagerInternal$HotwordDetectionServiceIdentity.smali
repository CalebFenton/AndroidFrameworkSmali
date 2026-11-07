.class public Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotwordDetectionServiceIdentity"
.end annotation


# instance fields
.field private final blacklist mIsolatedUid:I

.field private final blacklist mOwnerUid:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "isolatedUid"    # I
    .param p2, "ownerUid"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mIsolatedUid:I

    .line 113
    iput p2, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mOwnerUid:I

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist getIsolatedUid()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mIsolatedUid:I

    return v0
.end method

.method public blacklist getOwnerUid()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mOwnerUid:I

    return v0
.end method
