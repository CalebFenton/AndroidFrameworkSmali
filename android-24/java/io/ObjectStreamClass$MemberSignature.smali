.class Ljava/io/ObjectStreamClass$MemberSignature;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemberSignature"
.end annotation


# instance fields
.field public final member:Ljava/lang/reflect/Member;

.field public final name:Ljava/lang/String;

.field public final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 2
    .param p1, "cons"    # Ljava/lang/reflect/Constructor;

    #@0
    .prologue
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1838
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    #@5
    .line 1839
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    #@b
    .line 1841
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@11
    .line 1840
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->-wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    #@17
    .line 1837
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1832
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    #@5
    .line 1833
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    #@b
    .line 1834
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-wrap2(Ljava/lang/Class;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    #@15
    .line 1831
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "meth"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 1844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1845
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    #@5
    .line 1846
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    #@b
    .line 1848
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@12
    move-result-object v1

    #@13
    .line 1847
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->-wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    #@19
    .line 1844
    return-void
.end method
