.class public final Landroid/app/contentsuggestions/ClassificationsRequest$Builder;
.super Ljava/lang/Object;
.source "ClassificationsRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ClassificationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mSelections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "selections":Ljava/util/List;, "Ljava/util/List<Landroid/app/contentsuggestions/ContentSelection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->mSelections:Ljava/util/List;

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/contentsuggestions/ClassificationsRequest;
    .registers 5

    .line 115
    new-instance v0, Landroid/app/contentsuggestions/ClassificationsRequest;

    iget-object v1, p0, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->mSelections:Ljava/util/List;

    iget-object v2, p0, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/contentsuggestions/ClassificationsRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;Landroid/app/contentsuggestions/ClassificationsRequest-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/contentsuggestions/ClassificationsRequest$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 107
    iput-object p1, p0, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 108
    return-object p0
.end method
