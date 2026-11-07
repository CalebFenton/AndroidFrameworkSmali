.class public Landroid/adservices/exceptions/UnsupportedPayloadSizeException;
.super Ljava/lang/IllegalStateException;
.source "UnsupportedPayloadSizeException.java"


# instance fields
.field private final blacklist mPayloadSizeKb:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "payloadSizeKb"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Landroid/adservices/exceptions/UnsupportedPayloadSizeException;->mPayloadSizeKb:I

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist getPayloadSizeKb()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/adservices/exceptions/UnsupportedPayloadSizeException;->mPayloadSizeKb:I

    return v0
.end method
