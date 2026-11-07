.class public final Landroid/service/chooser/ChooserAction$Builder;
.super Ljava/lang/Object;
.source "ChooserAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAction:Landroid/app/PendingIntent;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "action"    # Landroid/app/PendingIntent;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string/jumbo v0, "icon can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v0, "label can not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "pending intent can not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Landroid/service/chooser/ChooserAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 130
    iput-object p2, p0, Landroid/service/chooser/ChooserAction$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 131
    iput-object p3, p0, Landroid/service/chooser/ChooserAction$Builder;->mAction:Landroid/app/PendingIntent;

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/chooser/ChooserAction;
    .registers 6

    .line 141
    new-instance v0, Landroid/service/chooser/ChooserAction;

    iget-object v1, p0, Landroid/service/chooser/ChooserAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/service/chooser/ChooserAction$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/service/chooser/ChooserAction$Builder;->mAction:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/chooser/ChooserAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/service/chooser/ChooserAction-IA;)V

    return-object v0
.end method
