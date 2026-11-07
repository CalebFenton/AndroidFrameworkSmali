.class Lcom/android/internal/telephony/cat/GetInputParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mInput:Lcom/android/internal/telephony/cat/Input;


# direct methods
.method constructor greylist-max-r <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V
    .registers 3

    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 207
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-void
.end method


# virtual methods
.method blacklist setIcon(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    if-eqz p0, :cond_8

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    :cond_8
    const/4 p0, 0x1

    return p0
.end method
