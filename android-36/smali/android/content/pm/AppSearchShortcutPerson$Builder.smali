.class public Landroid/content/pm/AppSearchShortcutPerson$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "AppSearchShortcutPerson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppSearchShortcutPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/content/pm/AppSearchShortcutPerson$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 129
    const-string v0, ""

    const-string v1, "ShortcutPerson"

    invoke-direct {p0, v0, p1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 125
    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->build()Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/content/pm/AppSearchShortcutPerson;
    .registers 3

    .line 177
    new-instance v0, Landroid/content/pm/AppSearchShortcutPerson;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/AppSearchShortcutPerson;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public blacklist setIcon([B)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4
    .param p1, "icon"    # [B

    .line 167
    if-eqz p1, :cond_c

    .line 168
    const-string/jumbo v0, "icon"

    filled-new-array {p1}, [[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    .line 170
    :cond_c
    return-object p0
.end method

.method public blacklist setIsBot(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4
    .param p1, "isBot"    # Z

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const-string/jumbo v1, "isBot"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    .line 154
    return-object p0
.end method

.method public blacklist setIsImportant(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4
    .param p1, "isImportant"    # Z

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const-string/jumbo v1, "isImportant"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    .line 161
    return-object p0
.end method

.method public blacklist setKey(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 144
    if-eqz p1, :cond_c

    .line 145
    const-string/jumbo v0, "key"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 147
    :cond_c
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 135
    if-eqz p1, :cond_10

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 138
    :cond_10
    return-object p0
.end method
