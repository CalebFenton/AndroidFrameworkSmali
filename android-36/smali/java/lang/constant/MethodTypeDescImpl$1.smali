.class Ljava/lang/constant/MethodTypeDescImpl$1;
.super Ljava/lang/Object;
.source "MethodTypeDescImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/constant/MethodTypeDescImpl;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/invoke/MethodType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/lang/constant/MethodTypeDescImpl;

.field final synthetic blacklist val$lookup:Ljava/lang/invoke/MethodHandles$Lookup;


# direct methods
.method constructor blacklist <init>(Ljava/lang/constant/MethodTypeDescImpl;Ljava/lang/invoke/MethodHandles$Lookup;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/constant/MethodTypeDescImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Ljava/lang/constant/MethodTypeDescImpl$1;->this$0:Ljava/lang/constant/MethodTypeDescImpl;

    iput-object p2, p0, Ljava/lang/constant/MethodTypeDescImpl$1;->val$lookup:Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 138
    invoke-virtual {p0}, Ljava/lang/constant/MethodTypeDescImpl$1;->run()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/invoke/MethodType;
    .registers 3

    .line 141
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl$1;->this$0:Ljava/lang/constant/MethodTypeDescImpl;

    invoke-virtual {v0}, Ljava/lang/constant/MethodTypeDescImpl;->descriptorString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl$1;->val$lookup:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 142
    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method
