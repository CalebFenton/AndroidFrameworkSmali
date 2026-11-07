.class public Lorg/w3c/dom/ls/LSException;
.super Ljava/lang/RuntimeException;
.source "LSException.java"


# static fields
.field public static final whitelist test-api PARSE_ERR:S = 0x51s

.field public static final whitelist test-api SERIALIZE_ERR:S = 0x52s


# instance fields
.field public whitelist test-api code:S


# direct methods
.method public constructor whitelist test-api <init>(SLjava/lang/String;)V
    .registers 3
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    iput-short p1, p0, Lorg/w3c/dom/ls/LSException;->code:S

    .line 33
    return-void
.end method
