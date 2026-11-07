.class public final Landroid/net/wifi/OuiKeyedData$Builder;
.super Ljava/lang/Object;
.source "OuiKeyedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OuiKeyedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mData:Landroid/os/PersistableBundle;

.field private final blacklist mOui:I


# direct methods
.method public constructor whitelist <init>(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "oui"    # I
    .param p2, "data"    # Landroid/os/PersistableBundle;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Landroid/net/wifi/OuiKeyedData$Builder;->mOui:I

    .line 160
    iput-object p2, p0, Landroid/net/wifi/OuiKeyedData$Builder;->mData:Landroid/os/PersistableBundle;

    .line 161
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/OuiKeyedData;
    .registers 5

    .line 167
    new-instance v0, Landroid/net/wifi/OuiKeyedData;

    iget v1, p0, Landroid/net/wifi/OuiKeyedData$Builder;->mOui:I

    iget-object v2, p0, Landroid/net/wifi/OuiKeyedData$Builder;->mData:Landroid/os/PersistableBundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/OuiKeyedData;-><init>(ILandroid/os/PersistableBundle;Landroid/net/wifi/OuiKeyedData-IA;)V

    .line 168
    .local v0, "ouiKeyedData":Landroid/net/wifi/OuiKeyedData;
    invoke-virtual {v0}, Landroid/net/wifi/OuiKeyedData;->validate()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 171
    return-object v0

    .line 169
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided parameters are invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
