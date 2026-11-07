.class Landroid/service/controls/templates/ControlTemplate$1;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ControlTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/templates/ControlTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "templateId"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getTemplateType()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method
