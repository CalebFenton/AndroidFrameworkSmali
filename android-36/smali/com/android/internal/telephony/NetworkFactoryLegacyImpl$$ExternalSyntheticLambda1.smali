.class public final synthetic Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;

.field public final synthetic blacklist f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;

    iput-object p2, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkRequest;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;->$r8$lambda$jAPtBPkB9N8wUvRSwjjH-2rg97I(Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
