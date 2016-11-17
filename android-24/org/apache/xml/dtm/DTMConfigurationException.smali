.class public Lorg/apache/xml/dtm/DTMConfigurationException;
.super Lorg/apache/xml/dtm/DTMException;
.source "DTMConfigurationException.java"


# static fields
.field static final serialVersionUID:J = -0x3ff2750fa5b3bd7eL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "Configuration Error"

    #@3
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@6
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@3
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@3
    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 56
    return-void
.end method
