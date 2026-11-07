.class public Ljavax/xml/transform/TransformerConfigurationException;
.super Ljavax/xml/transform/TransformerException;
.source "TransformerConfigurationException.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 32
    const-string v0, "Configuration Error"

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 65
    invoke-direct {p0, p1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;

    .line 80
    invoke-direct {p0, p1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 81
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 53
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
