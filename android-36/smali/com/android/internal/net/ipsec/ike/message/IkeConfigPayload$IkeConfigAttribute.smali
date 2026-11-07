.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionParams$IkeConfigRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IkeConfigAttribute"
.end annotation


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "attributeType"    # I

    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;-><init>(I)V

    .line 383
    return-void
.end method

.method protected constructor blacklist <init>(II)V
    .registers 3
    .param p1, "attributeType"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;-><init>(II)V

    .line 387
    return-void
.end method
