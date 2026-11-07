.class public final Landroid/service/settings/preferences/SetValueResult$Builder;
.super Ljava/lang/Object;
.source "SetValueResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/SetValueResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Landroid/service/settings/preferences/SetValueResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/settings/preferences/SetValueResult$Builder;->mResultCode:I

    return p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Landroid/service/settings/preferences/SetValueResult$Builder;->mResultCode:I

    .line 170
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/SetValueResult;
    .registers 3

    .line 177
    new-instance v0, Landroid/service/settings/preferences/SetValueResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/SetValueResult;-><init>(Landroid/service/settings/preferences/SetValueResult$Builder;Landroid/service/settings/preferences/SetValueResult-IA;)V

    return-object v0
.end method
