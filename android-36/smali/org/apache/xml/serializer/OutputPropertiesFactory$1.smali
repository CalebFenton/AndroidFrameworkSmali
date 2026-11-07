.class Lorg/apache/xml/serializer/OutputPropertiesFactory$1;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic greylist val$resourceName:Ljava/lang/String;


# direct methods
.method constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 368
    const-class v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    iget-object p0, p0, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;->val$resourceName:Ljava/lang/String;

    .line 369
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
