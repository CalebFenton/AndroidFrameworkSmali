.class public final synthetic Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/CellularIdentifierDisclosure;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;ILandroid/telephony/CellularIdentifierDisclosure;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    iput p2, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;->f$2:Landroid/telephony/CellularIdentifierDisclosure;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    iget v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$$ExternalSyntheticLambda3;->f$2:Landroid/telephony/CellularIdentifierDisclosure;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->$r8$lambda$oi1nmI7fv5ucnkibPVdvK0tAnWE(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;ILandroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method
