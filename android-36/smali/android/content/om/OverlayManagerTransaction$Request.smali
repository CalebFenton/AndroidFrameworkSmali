.class public final Landroid/content/om/OverlayManagerTransaction$Request;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerTransaction$Request$RequestType;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_FABRICATED_OVERLAY:Ljava/lang/String; = "fabricated_overlay"

.field public static final blacklist TYPE_REGISTER_FABRICATED:I = 0x2

.field public static final blacklist TYPE_SET_DISABLED:I = 0x1

.field public static final blacklist TYPE_SET_ENABLED:I = 0x0

.field public static final blacklist TYPE_UNREGISTER_FABRICATED:I = 0x3


# instance fields
.field public final blacklist constraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist extras:Landroid/os/Bundle;

.field public final blacklist overlay:Landroid/content/om/OverlayIdentifier;

.field public final blacklist type:I

.field public final blacklist userId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;I)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I

    .line 182
    nop

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 182
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "type":I
    .end local p2    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p3    # "userId":I
    .local v1, "type":I
    .local v2, "overlay":Landroid/content/om/OverlayIdentifier;
    .local v3, "userId":I
    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "type":I
    .end local p2    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p3    # "userId":I
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v1, "type":I
    .local v2, "overlay":Landroid/content/om/OverlayIdentifier;
    .local v3, "userId":I
    .local v4, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V

    .line 189
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/om/OverlayIdentifier;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p5, "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 206
    iput-object p2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 207
    iput p3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    .line 208
    iput-object p4, p0, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    .line 209
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iput-object p5, p0, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILjava/util/List;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/om/OverlayIdentifier;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p4, "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "type":I
    .end local p2    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p3    # "userId":I
    .end local p4    # "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    .local v1, "type":I
    .local v2, "overlay":Landroid/content/om/OverlayIdentifier;
    .local v3, "userId":I
    .local v5, "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V

    .line 197
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 215
    iget v0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget v3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    .line 218
    invoke-static {v4}, Landroid/content/om/OverlayConstraint;->constraintsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 215
    const-string v1, "Request{type=0x%02x (%s), overlay=%s, userId=%d, constraints=%s}"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist typeToString()Ljava/lang/String;
    .registers 3

    .line 228
    iget v0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    packed-switch v0, :pswitch_data_22

    .line 233
    iget v0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_UNKNOWN (0x%02x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_16
    const-string v0, "TYPE_UNREGISTER_FABRICATED"

    return-object v0

    .line 231
    :pswitch_19
    const-string v0, "TYPE_REGISTER_FABRICATED"

    return-object v0

    .line 230
    :pswitch_1c
    const-string v0, "TYPE_SET_DISABLED"

    return-object v0

    .line 229
    :pswitch_1f
    const-string v0, "TYPE_SET_ENABLED"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method
