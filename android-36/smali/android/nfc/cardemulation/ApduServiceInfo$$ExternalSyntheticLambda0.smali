.class public final synthetic Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/regex/Pattern;

    invoke-static {v0, v1, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->lambda$getShouldAutoTransact$0(ZLjava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result p1

    return p1
.end method
