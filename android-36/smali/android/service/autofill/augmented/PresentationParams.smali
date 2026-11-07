.class public abstract Landroid/service/autofill/augmented/PresentationParams;
.super Ljava/lang/Object;
.source "PresentationParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;,
        Landroid/service/autofill/augmented/PresentationParams$Area;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public whitelist getSuggestionArea()Landroid/service/autofill/augmented/PresentationParams$Area;
    .registers 2

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
