.class public Landroid/support/v4/app/AppOpsManagerCompat;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;,
        Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_IGNORED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    const/16 v1, 0x17

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 84
    new-instance v0, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;

    #@9
    invoke-direct {v0, v2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;-><init>(Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;)V

    #@c
    sput-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    #@e
    .line 27
    :goto_0
    return-void

    #@f
    .line 86
    :cond_0
    new-instance v0, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    #@11
    invoke-direct {v0, v2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>(Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;)V

    #@14
    sput-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    #@16
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "op"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 117
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    #@2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "op"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 138
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 97
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    #@2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
