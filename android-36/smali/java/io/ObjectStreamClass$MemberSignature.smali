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
.field public final greylist-max-o member:Ljava/lang/reflect/Member;

.field public final greylist-max-o name:Ljava/lang/String;

.field public final greylist-max-o signature:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/reflect/Constructor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 2041
    .local p1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 2043
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 2044
    nop

    .line 2045
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 2044
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 2046
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 2037
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 2038
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 2039
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/reflect/Method;)V
    .registers 4
    .param p1, "meth"    # Ljava/lang/reflect/Method;

    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2049
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 2050
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 2051
    nop

    .line 2052
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 2051
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 2053
    return-void
.end method
