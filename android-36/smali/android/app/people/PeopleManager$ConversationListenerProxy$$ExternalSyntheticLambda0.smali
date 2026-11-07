.class public final synthetic Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/people/PeopleManager$ConversationListenerProxy;

.field public final synthetic blacklist f$1:Landroid/app/people/ConversationChannel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/app/people/PeopleManager$ConversationListenerProxy;

    iput-object p2, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/people/ConversationChannel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/app/people/PeopleManager$ConversationListenerProxy;

    iget-object v1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/people/ConversationChannel;

    invoke-static {v0, v1}, Landroid/app/people/PeopleManager$ConversationListenerProxy;->$r8$lambda$FLwX8w41t_fRGvKEN6qs6zgZY28(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V

    return-void
.end method
