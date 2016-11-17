.class Ljava/util/Calendar$CalendarAccessControlContext;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarAccessControlContext"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 2710
    new-instance v0, Ljava/lang/RuntimePermission;

    #@2
    const-string/jumbo v2, "accessClassInPackage.sun.util.calendar"

    #@5
    invoke-direct {v0, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@8
    .line 2711
    .local v0, "perm":Ljava/lang/RuntimePermission;
    invoke-virtual {v0}, Ljava/security/Permission;->newPermissionCollection()Ljava/security/PermissionCollection;

    #@b
    move-result-object v1

    #@c
    .line 2712
    .local v1, "perms":Ljava/security/PermissionCollection;
    invoke-virtual {v1, v0}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    #@f
    .line 2713
    new-instance v2, Ljava/security/AccessControlContext;

    #@11
    const/4 v3, 0x1

    #@12
    new-array v3, v3, [Ljava/security/ProtectionDomain;

    #@14
    .line 2714
    new-instance v4, Ljava/security/ProtectionDomain;

    #@16
    const/4 v5, 0x0

    #@17
    invoke-direct {v4, v5, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    #@1a
    const/4 v5, 0x0

    #@1b
    aput-object v4, v3, v5

    #@1d
    .line 2713
    invoke-direct {v2, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@20
    sput-object v2, Ljava/util/Calendar$CalendarAccessControlContext;->INSTANCE:Ljava/security/AccessControlContext;

    #@22
    .line 2707
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
