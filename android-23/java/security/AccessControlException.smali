.class public Ljava/security/AccessControlException;
.super Ljava/lang/SecurityException;
.source "AccessControlException.java"


# static fields
.field private static final serialVersionUID:J = 0x474ea5094463b577L


# instance fields
.field private perm:Ljava/security/Permission;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Permission;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
    iput-object p2, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    #@5
    .line 50
    return-void
.end method


# virtual methods
.method public getPermission()Ljava/security/Permission;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    #@2
    return-object v0
.end method
