.class abstract Lsun/security/ssl/HelloExtension;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# instance fields
.field final type:Lsun/security/ssl/ExtensionType;


# direct methods
.method constructor <init>(Lsun/security/ssl/ExtensionType;)V
    .locals 0
    .param p1, "type"    # Lsun/security/ssl/ExtensionType;

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 235
    iput-object p1, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@5
    .line 234
    return-void
.end method


# virtual methods
.method abstract length()I
.end method

.method abstract send(Lsun/security/ssl/HandshakeOutStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
