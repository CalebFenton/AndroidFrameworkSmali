.class Ljava/security/Policy$UnsupportedEmptyCollection;
.super Ljava/security/PermissionCollection;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsupportedEmptyCollection"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 0
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 106
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 110
    const/4 v0, 0x1

    #@1
    return v0
.end method
