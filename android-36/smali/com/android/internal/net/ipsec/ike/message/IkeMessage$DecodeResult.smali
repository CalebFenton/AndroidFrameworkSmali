.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
.super Ljava/lang/Object;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DecodeResult"
.end annotation


# instance fields
.field public final blacklist status:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "status"    # I

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    .line 970
    return-void
.end method
