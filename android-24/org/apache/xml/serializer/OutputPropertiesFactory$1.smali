.class final Lorg/apache/xml/serializer/OutputPropertiesFactory$1;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;->val$resourceName:Ljava/lang/String;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 368
    const-class v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    #@2
    .line 369
    iget-object v1, p0, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;->val$resourceName:Ljava/lang/String;

    #@4
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
