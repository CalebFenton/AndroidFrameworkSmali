.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda29;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    return-void
.end method


# virtual methods
.method public final blacklist checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda29;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$kwwHgtiIFZ18sra63tx10U_S_l4(Lcom/android/internal/telephony/PhoneSubInfoController;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
