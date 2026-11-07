.class public Ljava/util/MissingResourceException;
.super Ljava/lang/RuntimeException;
.source "MissingResourceException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x43ac421a055d7d11L


# instance fields
.field private greylist-max-o className:Ljava/lang/String;

.field private greylist-max-o key:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    .line 63
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0, p1, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iput-object p2, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api getClassName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getKey()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    return-object v0
.end method
