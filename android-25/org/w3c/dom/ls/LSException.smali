.class public Lorg/w3c/dom/ls/LSException;
.super Ljava/lang/RuntimeException;
.source "LSException.java"


# static fields
.field public static final PARSE_ERR:S = 0x51s

.field public static final SERIALIZE_ERR:S = 0x52s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    iput-short p1, p0, Lorg/w3c/dom/ls/LSException;->code:S

    #@5
    .line 30
    return-void
.end method
