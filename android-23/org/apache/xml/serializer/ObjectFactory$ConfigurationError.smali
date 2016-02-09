.class Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x7af264ce4fbf062eL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 645
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 646
    iput-object p2, p0, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    #@5
    .line 644
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method
