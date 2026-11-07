.class Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;
.super Ljava/lang/Object;
.source "IkeLocalRequestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalRequestFactory"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist procedureTypeToPriority(I)I
    .registers 4
    .param p0, "procedureType"    # I

    .line 330
    sparse-switch p0, :sswitch_data_2a

    .line 351
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown procedureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeLocalRequestScheduler"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const v0, 0x7fffffff

    return v0

    .line 332
    :sswitch_23
    const/4 v0, 0x0

    return v0

    .line 337
    :sswitch_25
    const/4 v0, 0x1

    return v0

    .line 347
    :sswitch_27
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_27
        0x3 -> :sswitch_27
        0x4 -> :sswitch_25
        0x5 -> :sswitch_25
        0x191 -> :sswitch_27
        0x192 -> :sswitch_23
        0x193 -> :sswitch_27
        0x194 -> :sswitch_27
        0x195 -> :sswitch_27
        0x196 -> :sswitch_25
        0x197 -> :sswitch_27
    .end sparse-switch
.end method


# virtual methods
.method blacklist getChildLocalRequest(II)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    .registers 10
    .param p1, "type"    # I
    .param p2, "remoteChildSpi"    # I

    .line 318
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 323
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->procedureTypeToPriority(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    .end local p1    # "type":I
    .end local p2    # "remoteChildSpi":I
    .local v1, "type":I
    .local v2, "remoteChildSpi":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;-><init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    .line 318
    return-object v0
.end method

.method blacklist getChildLocalRequest(ILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    .registers 11
    .param p1, "type"    # I
    .param p2, "childCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p3, "childParams"    # Landroid/net/ipsec/ike/ChildSessionParams;

    .line 308
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    sget v2, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    .line 313
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->procedureTypeToPriority(I)I

    move-result v5

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "type":I
    .end local p2    # "childCallback":Landroid/net/ipsec/ike/ChildSessionCallback;
    .end local p3    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .local v1, "type":I
    .local v3, "childCallback":Landroid/net/ipsec/ike/ChildSessionCallback;
    .local v4, "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;-><init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    .line 308
    return-object v0
.end method

.method blacklist getIkeLocalRequest(I)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    .registers 4
    .param p1, "type"    # I

    .line 297
    sget v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(IJ)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v0

    return-object v0
.end method

.method blacklist getIkeLocalRequest(IJ)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    .registers 10
    .param p1, "type"    # I
    .param p2, "remoteIkeSpi"    # J

    .line 302
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->procedureTypeToPriority(I)I

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "type":I
    .end local p2    # "remoteIkeSpi":J
    .local v1, "type":I
    .local v2, "remoteIkeSpi":J
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;-><init>(IJILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    return-object v0
.end method
