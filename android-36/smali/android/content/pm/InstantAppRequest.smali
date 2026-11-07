.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "InstantAppRequest.java"


# instance fields
.field public final blacklist callingFeatureId:Ljava/lang/String;

.field public final greylist-max-o callingPackage:Ljava/lang/String;

.field public final blacklist hostDigestPrefixSecure:[I

.field public final blacklist isRequesterInstantApp:Z

.field public final greylist-max-o origIntent:Landroid/content/Intent;

.field public final greylist-max-o resolveForStart:Z

.field public final greylist-max-o resolvedType:Ljava/lang/String;

.field public final greylist-max-o responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final blacklist token:Ljava/lang/String;

.field public final greylist-max-o userId:I

.field public final greylist-max-o verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V
    .registers 12
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "isRequesterInstantApp"    # Z
    .param p7, "userId"    # I
    .param p8, "verificationBundle"    # Landroid/os/Bundle;
    .param p9, "resolveForStart"    # Z
    .param p10, "hostDigestPrefixSecure"    # [I
    .param p11, "token"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 68
    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 69
    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Landroid/content/pm/InstantAppRequest;->callingFeatureId:Ljava/lang/String;

    .line 72
    iput-boolean p6, p0, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    .line 73
    iput p7, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 74
    iput-object p8, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    .line 75
    iput-boolean p9, p0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    .line 76
    iput-object p10, p0, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    .line 77
    iput-object p11, p0, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 78
    return-void
.end method
