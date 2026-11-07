.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;->f$1:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$ypqZ6TrgxGHj4vma9RhiFmBVVUw(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
