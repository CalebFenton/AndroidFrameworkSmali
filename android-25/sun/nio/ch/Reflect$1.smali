.class final Lsun/nio/ch/Reflect$1;
.super Ljava/lang/Object;
.source "Reflect.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ao:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .param p1, "val$ao"    # Ljava/lang/reflect/AccessibleObject;

    #@0
    .prologue
    .line 46
    iput-object p1, p0, Lsun/nio/ch/Reflect$1;->val$ao:Ljava/lang/reflect/AccessibleObject;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lsun/nio/ch/Reflect$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lsun/nio/ch/Reflect$1;->val$ao:Ljava/lang/reflect/AccessibleObject;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@6
    .line 49
    const/4 v0, 0x0

    #@7
    return-object v0
.end method
