.class Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 571
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    #@9
    .line 570
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final compare(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I
    .locals 3
    .param p1, "a"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "b"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    #@2
    iget-object v1, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    #@4
    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    #@6
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 573
    check-cast p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->compare(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
