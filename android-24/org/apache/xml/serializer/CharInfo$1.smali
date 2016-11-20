.class final Lorg/apache/xml/serializer/CharInfo$1;
.super Ljava/lang/Object;
.source "CharInfo.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entitiesFileName:Ljava/lang/String;

.field final synthetic val$internal:Z

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "val$entitiesFileName"    # Ljava/lang/String;
    .param p2, "val$method"    # Ljava/lang/String;
    .param p3, "val$internal"    # Z

    #@0
    .prologue
    .line 463
    iput-object p1, p0, Lorg/apache/xml/serializer/CharInfo$1;->val$entitiesFileName:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lorg/apache/xml/serializer/CharInfo$1;->val$method:Ljava/lang/String;

    #@4
    iput-boolean p3, p0, Lorg/apache/xml/serializer/CharInfo$1;->val$internal:Z

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 465
    new-instance v0, Lorg/apache/xml/serializer/CharInfo;

    #@2
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo$1;->val$entitiesFileName:Ljava/lang/String;

    #@4
    .line 466
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo$1;->val$method:Ljava/lang/String;

    #@6
    iget-boolean v3, p0, Lorg/apache/xml/serializer/CharInfo$1;->val$internal:Z

    #@8
    .line 465
    const/4 v4, 0x0

    #@9
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/serializer/CharInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/xml/serializer/CharInfo;)V

    #@c
    return-object v0
.end method
