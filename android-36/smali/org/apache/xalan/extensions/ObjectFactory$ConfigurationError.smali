.class Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/extensions/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x76da862380ef206dL


# instance fields
.field private greylist exception:Ljava/lang/Exception;


# direct methods
.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 140
    iput-object p2, p0, Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method greylist getException()Ljava/lang/Exception;
    .registers 1

    .line 149
    iget-object p0, p0, Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object p0
.end method
