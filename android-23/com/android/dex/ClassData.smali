.class public final Lcom/android/dex/ClassData;
.super Ljava/lang/Object;
.source "ClassData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/ClassData$Field;,
        Lcom/android/dex/ClassData$Method;
    }
.end annotation


# instance fields
.field private final directMethods:[Lcom/android/dex/ClassData$Method;

.field private final instanceFields:[Lcom/android/dex/ClassData$Field;

.field private final staticFields:[Lcom/android/dex/ClassData$Field;

.field private final virtualMethods:[Lcom/android/dex/ClassData$Method;


# direct methods
.method public constructor <init>([Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Method;[Lcom/android/dex/ClassData$Method;)V
    .locals 0
    .param p1, "staticFields"    # [Lcom/android/dex/ClassData$Field;
    .param p2, "instanceFields"    # [Lcom/android/dex/ClassData$Field;
    .param p3, "directMethods"    # [Lcom/android/dex/ClassData$Method;
    .param p4, "virtualMethods"    # [Lcom/android/dex/ClassData$Method;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Lcom/android/dex/ClassData;->staticFields:[Lcom/android/dex/ClassData$Field;

    #@5
    .line 28
    iput-object p2, p0, Lcom/android/dex/ClassData;->instanceFields:[Lcom/android/dex/ClassData$Field;

    #@7
    .line 29
    iput-object p3, p0, Lcom/android/dex/ClassData;->directMethods:[Lcom/android/dex/ClassData$Method;

    #@9
    .line 30
    iput-object p4, p0, Lcom/android/dex/ClassData;->virtualMethods:[Lcom/android/dex/ClassData$Method;

    #@b
    .line 26
    return-void
.end method


# virtual methods
.method public allFields()[Lcom/android/dex/ClassData$Field;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 50
    iget-object v1, p0, Lcom/android/dex/ClassData;->staticFields:[Lcom/android/dex/ClassData$Field;

    #@3
    array-length v1, v1

    #@4
    iget-object v2, p0, Lcom/android/dex/ClassData;->instanceFields:[Lcom/android/dex/ClassData$Field;

    #@6
    array-length v2, v2

    #@7
    add-int/2addr v1, v2

    #@8
    new-array v0, v1, [Lcom/android/dex/ClassData$Field;

    #@a
    .line 51
    .local v0, "result":[Lcom/android/dex/ClassData$Field;
    iget-object v1, p0, Lcom/android/dex/ClassData;->staticFields:[Lcom/android/dex/ClassData$Field;

    #@c
    iget-object v2, p0, Lcom/android/dex/ClassData;->staticFields:[Lcom/android/dex/ClassData$Field;

    #@e
    array-length v2, v2

    #@f
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 52
    iget-object v1, p0, Lcom/android/dex/ClassData;->instanceFields:[Lcom/android/dex/ClassData$Field;

    #@14
    iget-object v2, p0, Lcom/android/dex/ClassData;->staticFields:[Lcom/android/dex/ClassData$Field;

    #@16
    array-length v2, v2

    #@17
    iget-object v3, p0, Lcom/android/dex/ClassData;->instanceFields:[Lcom/android/dex/ClassData$Field;

    #@19
    array-length v3, v3

    #@1a
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 53
    return-object v0
.end method

.method public allMethods()[Lcom/android/dex/ClassData$Method;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 57
    iget-object v1, p0, Lcom/android/dex/ClassData;->directMethods:[Lcom/android/dex/ClassData$Method;

    #@3
    array-length v1, v1

    #@4
    iget-object v2, p0, Lcom/android/dex/ClassData;->virtualMethods:[Lcom/android/dex/ClassData$Method;

    #@6
    array-length v2, v2

    #@7
    add-int/2addr v1, v2

    #@8
    new-array v0, v1, [Lcom/android/dex/ClassData$Method;

    #@a
    .line 58
    .local v0, "result":[Lcom/android/dex/ClassData$Method;
    iget-object v1, p0, Lcom/android/dex/ClassData;->directMethods:[Lcom/android/dex/ClassData$Method;

    #@c
    iget-object v2, p0, Lcom/android/dex/ClassData;->directMethods:[Lcom/android/dex/ClassData$Method;

    #@e
    array-length v2, v2

    #@f
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 59
    iget-object v1, p0, Lcom/android/dex/ClassData;->virtualMethods:[Lcom/android/dex/ClassData$Method;

    #@14
    iget-object v2, p0, Lcom/android/dex/ClassData;->directMethods:[Lcom/android/dex/ClassData$Method;

    #@16
    array-length v2, v2

    #@17
    iget-object v3, p0, Lcom/android/dex/ClassData;->virtualMethods:[Lcom/android/dex/ClassData$Method;

    #@19
    array-length v3, v3

    #@1a
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 60
    return-object v0
.end method

.method public getDirectMethods()[Lcom/android/dex/ClassData$Method;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/dex/ClassData;->directMethods:[Lcom/android/dex/ClassData$Method;

    #@2
    return-object v0
.end method

.method public getInstanceFields()[Lcom/android/dex/ClassData$Field;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/dex/ClassData;->instanceFields:[Lcom/android/dex/ClassData$Field;

    #@2
    return-object v0
.end method

.method public getStaticFields()[Lcom/android/dex/ClassData$Field;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/dex/ClassData;->staticFields:[Lcom/android/dex/ClassData$Field;

    #@2
    return-object v0
.end method

.method public getVirtualMethods()[Lcom/android/dex/ClassData$Method;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/dex/ClassData;->virtualMethods:[Lcom/android/dex/ClassData$Method;

    #@2
    return-object v0
.end method
