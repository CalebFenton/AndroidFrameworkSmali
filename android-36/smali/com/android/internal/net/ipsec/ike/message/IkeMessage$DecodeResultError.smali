.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;
.super Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DecodeResultError"
.end annotation


# instance fields
.field public final blacklist ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;


# direct methods
.method protected constructor blacklist <init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;-><init>(I)V

    .line 1074
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 1075
    return-void
.end method
