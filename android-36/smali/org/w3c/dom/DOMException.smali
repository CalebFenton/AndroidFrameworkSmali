.class public Lorg/w3c/dom/DOMException;
.super Ljava/lang/RuntimeException;
.source "DOMException.java"


# static fields
.field public static final whitelist test-api DOMSTRING_SIZE_ERR:S = 0x2s

.field public static final whitelist test-api HIERARCHY_REQUEST_ERR:S = 0x3s

.field public static final whitelist test-api INDEX_SIZE_ERR:S = 0x1s

.field public static final whitelist test-api INUSE_ATTRIBUTE_ERR:S = 0xas

.field public static final whitelist test-api INVALID_ACCESS_ERR:S = 0xfs

.field public static final whitelist test-api INVALID_CHARACTER_ERR:S = 0x5s

.field public static final whitelist test-api INVALID_MODIFICATION_ERR:S = 0xds

.field public static final whitelist test-api INVALID_STATE_ERR:S = 0xbs

.field public static final whitelist test-api NAMESPACE_ERR:S = 0xes

.field public static final whitelist test-api NOT_FOUND_ERR:S = 0x8s

.field public static final whitelist test-api NOT_SUPPORTED_ERR:S = 0x9s

.field public static final whitelist test-api NO_DATA_ALLOWED_ERR:S = 0x6s

.field public static final whitelist test-api NO_MODIFICATION_ALLOWED_ERR:S = 0x7s

.field public static final whitelist test-api SYNTAX_ERR:S = 0xcs

.field public static final whitelist test-api TYPE_MISMATCH_ERR:S = 0x11s

.field public static final whitelist test-api VALIDATION_ERR:S = 0x10s

.field public static final whitelist test-api WRONG_DOCUMENT_ERR:S = 0x4s


# instance fields
.field public whitelist test-api code:S


# direct methods
.method public constructor whitelist test-api <init>(SLjava/lang/String;)V
    .registers 3
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    iput-short p1, p0, Lorg/w3c/dom/DOMException;->code:S

    .line 37
    return-void
.end method
