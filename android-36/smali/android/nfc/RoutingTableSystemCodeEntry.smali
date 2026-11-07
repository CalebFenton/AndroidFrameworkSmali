.class public Landroid/nfc/RoutingTableSystemCodeEntry;
.super Landroid/nfc/NfcRoutingTableEntry;
.source "RoutingTableSystemCodeEntry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mValue:[B


# direct methods
.method public constructor blacklist <init>(I[BI)V
    .registers 5
    .param p1, "nfceeId"    # I
    .param p2, "value"    # [B
    .param p3, "routeType"    # I

    .line 37
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p3}, Landroid/nfc/NfcRoutingTableEntry;-><init>(III)V

    .line 38
    iput-object p2, p0, Landroid/nfc/RoutingTableSystemCodeEntry;->mValue:[B

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist getSystemCode()[B
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/nfc/RoutingTableSystemCodeEntry;->mValue:[B

    return-object v0
.end method
