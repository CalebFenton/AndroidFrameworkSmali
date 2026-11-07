.class public final synthetic Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/eap/EapAuthenticator;

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/eap/EapAuthenticator;[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/eap/EapAuthenticator;

    iput-object p2, p0, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;->f$1:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/eap/EapAuthenticator;

    iget-object v1, p0, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;->f$1:[B

    invoke-static {v0, v1}, Lcom/android/internal/net/eap/EapAuthenticator;->$r8$lambda$AXV5EGvlrOe2tgAbY1VDQkD7MJ0(Lcom/android/internal/net/eap/EapAuthenticator;[B)V

    return-void
.end method
