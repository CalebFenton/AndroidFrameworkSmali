.class public Ljava/util/MissingResourceException;
.super Ljava/lang/RuntimeException;
.source "MissingResourceException.java"


# static fields
.field private static final serialVersionUID:J = -0x43ac421a055d7d11L


# instance fields
.field private className:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 62
    iput-object p2, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    #@5
    .line 63
    iput-object p3, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    #@7
    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 86
    iput-object p2, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    #@5
    .line 87
    iput-object p3, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    #@7
    .line 84
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method
