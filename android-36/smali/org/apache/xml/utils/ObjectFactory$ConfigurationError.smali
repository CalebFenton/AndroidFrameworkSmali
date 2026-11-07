.class Lorg/apache/xml/utils/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/utils/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x1c43866317f52270L


# instance fields
.field private greylist exception:Ljava/lang/Exception;


# direct methods
.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 646
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 647
    iput-object p2, p0, Lorg/apache/xml/utils/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method greylist getException()Ljava/lang/Exception;
    .registers 1

    .line 656
    iget-object p0, p0, Lorg/apache/xml/utils/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object p0
.end method
