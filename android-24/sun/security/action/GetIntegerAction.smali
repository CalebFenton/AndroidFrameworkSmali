.class public Lsun/security/action/GetIntegerAction;
.super Ljava/lang/Object;
.source "GetIntegerAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultSet:Z

.field private defaultVal:I

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theProp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    #@6
    .line 79
    iput-object p1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    #@8
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "theProp"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    #@6
    .line 90
    iput-object p1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    #@8
    .line 91
    iput p2, p0, Lsun/security/action/GetIntegerAction;->defaultVal:I

    #@a
    .line 92
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    #@d
    .line 89
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .locals 3

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    .line 109
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@8
    iget-boolean v1, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 110
    new-instance v1, Ljava/lang/Integer;

    #@e
    iget v2, p0, Lsun/security/action/GetIntegerAction;->defaultVal:I

    #@10
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    #@13
    return-object v1

    #@14
    .line 111
    :cond_0
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lsun/security/action/GetIntegerAction;->run()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
