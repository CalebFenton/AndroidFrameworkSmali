.class public Landroid/icu/message2/MFParseException;
.super Ljava/text/ParseException;
.source "MFParseException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x69f23202ab193937L


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorOffset"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 32
    invoke-super {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
