.class public Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningDetailsWithDigests"
.end annotation


# instance fields
.field public final blacklist contentDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public final blacklist signingDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V
    .registers 3
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SigningDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 648
    .local p2, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 650
    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;

    .line 651
    return-void
.end method
