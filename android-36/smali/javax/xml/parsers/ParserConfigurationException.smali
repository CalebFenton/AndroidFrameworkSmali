.class public Ljavax/xml/parsers/ParserConfigurationException;
.super Ljava/lang/Exception;
.source "ParserConfigurationException.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
